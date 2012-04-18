package async

class NapController {

    def sleep() {

        sleep(10 * 1000)
        render "Done Doing something expensive.."
    }
}
