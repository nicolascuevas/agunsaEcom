
module AgunsaManager
    
    class GetWarehouseLocations < ApplicationService
        attr_reader :warehouse_name
        require 'tiny_tds'

        def initialize(warehouse_name)
            @warehouse_name = warehouse_name
        end
    
        def call()
            db = self.db_connection()
            query = "SELECT *
                        FROM dbo.PB_EC_Ubicacion ubicaciones
                        WHERE ubicaciones.codigo_bodega LIKE '%#{@warehouse_name}%'
                    "
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