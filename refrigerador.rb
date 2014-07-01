class Refrigerador

    def initialize
        @puerta = "cerrada"
        @contenido = []
    end

    def contenido
        if @puerta == "abierta"
            return @contenido
        else
            warn "Puerta cerrada!"
        end
    end

    def abierta
        @puerta = "abierta"
    end

    def cerrada
        @puerta = "cerrada"
    end
    
end
