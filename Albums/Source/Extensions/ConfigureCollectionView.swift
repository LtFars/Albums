import UIKit

extension MainViewController {
    
    func configureSections() {
        
        models.append(Models(options: [
            
            .albumsCell(model: ItemOption(
                            name: "Недавние",
                            number: 67,
                            imageName: "Image_1")),
            .albumsCell(model: ItemOption(
                            name: "Лес",
                            number: 3,
                            imageName: "Image_4")),
            .albumsCell(model: ItemOption(
                            name: "Рассветы",
                            number: 4,
                            imageName: "Image_5")),
            .albumsCell(model: ItemOption(
                            name: "Цветы",
                            number: 2,
                            imageName: "Image_6")),
            .albumsCell(model: ItemOption(
                            name: "Растения",
                            number: 2,
                            imageName: "Image_7")),
            .albumsCell(model: ItemOption(
                            name: "Кот",
                            number: 3,
                            imageName: "Image_8"))
            ]))
        
        models.append(Models(options: [
            
            .albumsCell(model: ItemOption(
                            name: "Люди",
                            number: 0,
                            imageName: "Image_2")),
            .albumsCell(model: ItemOption(
                            name: "Места",
                            number: 16,
                            imageName: "Image_3"))
            ]))
        
        models.append(Models(options: [
            
            .standardCell(model: TableOption(
                            title: "Видео",
                            icon: UIImage(systemName: "video"),
                            label: 10)),
            .standardCell(model: TableOption(
                            title: "Селфи",
                            icon: UIImage(systemName: "person.crop.square"),
                            label: 12)),
            .standardCell(model: TableOption(
                            title: "Портреты",
                            icon: UIImage(systemName: "cube"),
                            label: 56)),
            .standardCell(model: TableOption(
                            title: "Снимки экрана",
                            icon: UIImage(systemName: "camera.viewfinder"),
                            label: 23)),
            .standardCell(model: TableOption(
                            title: "Записи экрана",
                            icon: UIImage(systemName: "record.circle"),
                            label: 1)),
            .standardCell(model: TableOption(
                            title: "Анимированные",
                            icon: UIImage(systemName: "rhombus"),
                            label: 1))
            ]))
        
        models.append(Models(options: [
            
            .standardCell(model: TableOption(
                            title: "Импортированные",
                            icon: UIImage(systemName: "square.and.arrow.down"),
                            label: 0)),
            .standardCell(model: TableOption(
                            title: "Скрытые",
                            icon: UIImage(systemName: "eye.slash"),
                            label: 0)),
            .standardCell(model: TableOption(
                            title: "Недавно удаленные",
                            icon: UIImage(systemName: "trash"),
                            label: 45))
            ]))
    }
}
