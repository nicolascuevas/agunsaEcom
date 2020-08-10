

module AgunsaManager
    
    class GetReceptions < ApplicationService
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
                        FROM dbo.PB_EC_Act_Oper_RE recepcion
                        WHERE recepcion.codigo_cliente LIKE '%#{@client_code}%'
                        #{ "AND recepcion.numero_re > #{@last_id}" if @last_id}
                        ORDER BY recepcion.numero_re asc"
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