/*
 Copyright 2016-present The Material Motion Authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import UIKit
import MaterialMotionTransitions

class FadeInExampleViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.view.backgroundColor = .white

    self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap)))
  }

  func didTap() {
    let vc = FadeInExampleViewController()
    vc.view.backgroundColor = .red

    let nc = UINavigationController(rootViewController: vc)
    vc.navigationItem.leftBarButtonItem = UIBarButtonItem(
      title: "Back",
      style: .done,
      target: self,
      action: #selector(didTapBack)
    )
    nc.mdm_transitionController.directorClass = FadeInTransitionDirector.self
    self.present(nc, animated: true)
  }

  func didTapBack() {
    self.dismiss(animated: true)
  }
}
