import UIKit

class FirstSectionCell: UICollectionViewCell {
    
    static let identifier = "FirstSectionCell"

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image_1")
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let labelName: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "111"
        label.backgroundColor = .clear
        label.font = UIFont.systemFont(ofSize: 14)
        label.minimumScaleFactor = 14
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let labelCount: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .left
        label.text = "222"
        label.backgroundColor = .clear
        label.font = UIFont.systemFont(ofSize: 14)
        label.minimumScaleFactor = 14
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Setup layouts constraints
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
        
        labelName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
        
        labelCount.leadingAnchor.constraint(equalTo: labelName.leadingAnchor).isActive = true
        labelCount.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 2).isActive = true
    }
    
    // MARK: - Private functions
    
    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(labelName)
        contentView.addSubview(labelCount)
    }
    
    // MARK: - Public functions
    
//    public func configureCollectionCell(with collection: [CustomCollectionCell], indexPath: IndexPath) {
//        self.labelName.text = collection[indexPath.row].textName
//        self.labelCount.text = collection[indexPath.row].textCount
//        self.imageView.image = UIImage(named: collection[indexPath.row].imageName)
//    }
}
