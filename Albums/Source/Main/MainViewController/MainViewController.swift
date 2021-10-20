import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    static let identifier = "ImageTableViewCell"
    
    private var collectionView: UICollectionView?
    
    let sections = Bundle.main.decode([MScection].self, from: "model.json")
    
    private let labelHeader: UILabel = {
        let label = UILabel()
        label.text = nil
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.minimumScaleFactor = 15
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//
//    private let additionalLabel: UILabel = {
//        let label = UILabel()
//        label.text = nil
//        label.textAlignment = .right
//        label.backgroundColor = .clear
//        label.textColor = .systemBlue
//        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
//        label.minimumScaleFactor = 15
//        label.adjustsFontSizeToFitWidth = true
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    let layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 15)
        return layout
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //sections.map { (section) in section.items.map { (chat) in print(chat.friendName)}}
        
        
        
        
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        
        guard let collectionView = collectionView else {
            return
        }
        
        collectionView.register(FirstSectionCell.self, forCellWithReuseIdentifier: FirstSectionCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isPagingEnabled = true
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.showsHorizontalScrollIndicator = false
        
        //collectionView.orthogonalScrollingBehavior = .groupPaging
        
        setupHierarchy()
        setupLayouts()
        setupView()
        setupDelegates()
    }
    
    // MARK: - Private functions
    
    private func setupHierarchy() {
        view.addSubview(collectionView ?? UICollectionView())
        view.addSubview(labelHeader)
//        view.addSubview(additionalLabel)
    }
    
    private func setupLayouts() {
        collectionView?.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        collectionView?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        collectionView?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectionView?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true

        labelHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        labelHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
        labelHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    
    private func setupView() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.topItem?.title = "Альбомы"
        //navigationController?.navigationBar.topItem?.titleView?.tintColor = .clear
    }
    
    private func setupDelegates() {
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
    
    // MARK: - CollectionView functions
    
//    func createCompositionLayout() -> UICollectionViewLayout {
//        let layout = UICollectionViewCompositionalLayout { (sectionIndex, layoutEnviroment) -> NSCollectionLayoutSection? in
//            let section = self.sections[sectionIndex]
//            switch section.type {
//            default: return
//            }
//        }
//
//        return layout
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstSectionCell.identifier, for: indexPath) as? FirstSectionCell else {
            return UICollectionViewCell()
        }
//        let collection = sections
//
//        switch collection {
//        case .collectionCell(let cell):
//            guard let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: indexPath) as? ImageCollectionViewCell else {
//                return UICollectionViewCell()
//            }
//            collectionCell.configureCollectionCell(with: cell, indexPath: indexPath)
//            return collectionCell
//        default: return UICollectionViewCell()
//        }
        return collectionCell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 60+50)
        return CGSize(width: view.frame.size.width / 2.25, height: view.frame.size.width / 2.15 + 30)
    }
}
