package exemplo.docker

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class DockerTesteApplication

fun main(args: Array<String>) {
	runApplication<DockerTesteApplication>(*args)
}
