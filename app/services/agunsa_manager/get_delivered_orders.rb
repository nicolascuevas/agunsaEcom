

module AgunsaManager
    
    class GetDeliveredOrders < ApplicationService
        attr_reader :last_id
        attr_reader :client_code
        require 'tiny_tds'
        require 'json'

        def initialize(client_code, last_id)
            @client_code = client_code
            @last_id = last_id
        end

        def call()
            db = self.db_connection()
            query = "SELECT * 
                        FROM dbo.PB_EC_Act_Oper_EN entrega
                        WHERE entrega.codigo_cliente like '%#{@client_code}%'
                        #{ "AND entrega.numero_despacho > #{@last_id}" if @last_id}
                        ORDER BY entrega.numero_despacho asc"
            puts query
            result = db.execute(query)

            return result.each do |row| 
                row
            end
            
        end


        private

        def db_connection

            server = '192.168.139.23'
            database = 'SIL_PowerBi_EC'
            username = 'Powerbi_ec'
            password = 'Powerbi_ec'
            client = TinyTds::Client.new ({ username: 'Powerbi_ec', 
                                            password: 'Powerbi_ec',  
                                            host: '192.168.139.23', 
                                            port: 1433,  
                                            database: 'SIL_PowerBi_EC', 
                                            azure: false}) 
            return client
        end


    end
end