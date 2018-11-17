//
//  Diccionarios.swift
//  Diccionario del Programador - Top 5
//
//  Created by fernando rossetti on 21/11/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit

enum Type
{
case Spanish , English
}

class SpanishEnglish
{
    var name:String
    var descriptionDictionary:String
   


    init(name:String, descriptionDictionary:String)
    {
    self.name = name
    self.descriptionDictionary = descriptionDictionary
    }
    
    convenience init()
    {
    self.init()
    self.name = ""
    self.descriptionDictionary = ""
    }
    
    static func dictionaries(type:Type)->[SpanishEnglish]
    {
        var data = []
        switch type {
        case Type.Spanish:
            data=[["name":"Abstraccion", "descriptionDictionary":"acto mental en el que se aísla un objeto o una propiedad de un objeto. Una de las primeras reflexiones conocidas sobre la abstracción se debe a Aristóteles, que introdujo el término aphaireis que se tradujo al latín como abstractio. En contra de Platón, que creía en una intuición directa de las esencias o ideas, Aristóteles considera que toda idea universal se fundamenta en datos empíricos. Así, la idea (o concepto) de mesa, por ejemplo, procede del proceso de comparación de diversos objetos muebles que comparten entre si unas características semejantes que podemos abstraer y quedarnos con lo que tienen en común. Aquello que hace que una mesa sea una mesa no es que sea cuadrada, redonda, rectangular, de madera, de mármol, verde, amarilla o roja, sino que abstraemos de estos objetos su color, su forma, el material del cual están hechas y nos quedamos con la idea o el concepto de mesa. Dicho concepto, pues, procede del proceso mental de abstracción."],
                  ["name":"Sistema Binario", "descriptionDictionary":"El sistema binario, llamado también sistema diádico1 en ciencias de la computación, es un sistema de numeración en el que los números se representan utilizando solamente dos cifras: cero y uno (0 y 1). Es uno de los sistemas que se utilizan en las computadoras, debido a que estas trabajan internamente con dos niveles de voltaje, por lo cual su sistema de numeración natural es el sistema binario (encendido 1, apagado 0)."],
                  ["name":"Condicional", "descriptionDictionary":"El modo condicional es uno de los modos del verbo en algunas lenguas romances y germánicas. Otro nombre alternativo es el de modo potencial porque en ocasiones se refiere a acciones hipotéticas o posibles. Frecuentemente se considera que el condicional es simplemente un tiempo verbal y no un modo independiente."],
                  ["name":"Latencia", "descriptionDictionary":"En redes informáticas de datos se denomina latencia a la suma de retardos temporales dentro de una red. Un retardo es producido por la demora en la propagación y transmisión de paquetes dentro de la red.Otros factores que influyen en la latencia de una red son: El tamaño de los paquetes transmitidos. El tamaño de los buffers dentro de los equipos de conectividad. Ellos pueden producir un Retardo Medio de Encolado."],
                  ["name":"Memoria Virtual", "descriptionDictionary":"La memoria virtual es una técnica de gestión de la memoria que permite que el sistema operativo disponga, tanto para el software de usuario como para sí mismo, de mayor cantidad de memoria que esté disponible físicamente. La mayoría de los ordenadores tienen cuatro tipos de memoria: registros en la CPU, la memoria caché (tanto dentro como fuera del CPU), la memoria RAM y el disco duro. En ese orden, van de menor capacidad y mayor velocidad a mayor capacidad y menor velocidad."]]
            break
        case Type.English:
            data=[["name":"Abstraction", "descriptionDictionary":"Abstraction in its main sense is a conceptual process by which general rules and concepts are derived from the usage and classification of specific examples, literal (real or concrete) signifiers, first principles, or other methods. An abstraction is the product of this process — a concept that acts as a super-categorical noun for all subordinate concepts, and connects any related concepts as a group, field, or category"],
                  ["name":"Binary System", "descriptionDictionary":"A binary system is a system of two objects in space (usually stars, but also brown dwarfs, planets, neutron stars, black holes, galaxies, or asteroids) which are close enough that their gravitational movement causes them to circle around each other (orbit) around a shared mass. Some definitions require that this center of mass is not located within the interior of either object. A multiple system is like a binary system but consists of three or more objects."],
                  ["name":"Conditional", "descriptionDictionary":"In computer science, conditional statements, conditional expressions and conditional constructs are features of a programming language, which perform different computations or actions depending on whether a programmer-specified boolean condition evaluates to true or false. Apart from the case of branch predication, this is always achieved by selectively altering the control flow based on some condition."],
                  ["name":"Latency", "descriptionDictionary":"Latency is a time interval between the stimulation and response, or, from a more general point of view, a time delay between the cause and the effect of some physical change in the system being observed.[1] Latency is physically a consequence of the limited velocity with which any physical interaction can propagate. This velocity is always lower than or equal to the speed of light. Therefore, every physical system that has spatial dimensions different from zero will experience some sort of latency, regardless of the nature of stimulation that it has been exposed to The precise definition of latency depends on the system being observed and the nature of stimulation. In communications, the lower limit of latency is determined by the medium being used for communications. In reliable two-way communication systems, latency limits the maximum rate that information can be transmitted, as there is often a limit on the amount of information that is in-flight at any one moment. In the field of human–machine interaction, perceptible latency has a strong effect on user satisfaction and usability."],
                  ["name":"Virtual Memory", "descriptionDictionary":"In computing, virtual memory is a memory management technique that is implemented using both hardware and software. It maps memory addresses used by a program, called virtual addresses, into physical addresses in computer memory. Main storage as seen by a process or task appears as a contiguous address space or collection of contiguous segments. The operating system manages virtual address spaces and the assignment of real memory to virtual memory. Address translation hardware in the CPU, often referred to as a memory management unit or MMU, automatically translates virtual addresses to physical addresses. Software within the operating system may extend these capabilities to provide a virtual address space that can exceed the capacity of real memory and thus reference more memory than is physically present in the computer. The primary benefits of virtual memory include freeing applications from having to manage a shared memory space, increased security due to memory isolation, and being able to conceptually use more memory than might be physically available, using the technique of paging."]]
            break
        
        }
        
        var dictionaries = [SpanishEnglish]()
        for item in data{
            let dictionary = SpanishEnglish.init(name: item["name"]as! String, descriptionDictionary: item["descriptionDictionary"]as! String)
        dictionaries.append(dictionary)
    }
        return dictionaries

}
}
