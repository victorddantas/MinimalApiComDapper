using System.ComponentModel.DataAnnotations.Schema;

namespace MinimalApiComDapper.Data
{
    [Table("Veiculo")]

    //Em C#, um record é um tipo de dados introduzido no C# 9.0 que é usado para definir objetos imutáveis (compoarando a uma propridade com apenas o get) de maneira concisa.
    // Os registros são frequentemente usados para representar valores imutáveis e geralmente são usados em cenários em que
    //a igualdade semântica (comparação de valores) é mais importante do que a igualdade de referência (comparação de objetos).
    public record Carro(int Id, string Marca, string Modelo, int Ano, string Cor);

}
