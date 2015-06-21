import Foundation

class SampleController: FORMViewController {
    override init(JSON: AnyObject, andInitialValues initialValues: [NSObject : AnyObject]?, disabled: Bool) {
        super.init(JSON: JSON, andInitialValues: initialValues, disabled: disabled)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView?.registerClass(MultilineCell.self, forCellWithReuseIdentifier: MultilineCellIdentifier)
    }
}
