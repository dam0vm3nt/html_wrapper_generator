/* -*- Mode: IDL; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * The origin of this IDL file is
 * https://dvcs.w3.org/hg/webcomponents/raw-file/tip/spec/shadow/index.html
 *
 * Copyright © 2012 W3C® (MIT, ERCIM, Keio), All Rights Reserved. W3C
 * liability, trademark and document use rules apply.
 */

[NoInterfaceObject,
 Exposed=Window]
interface DocumentOrShadowRoot {
};


partial interface DocumentOrShadowRoot {
    Selection?        getSelection();
    Element?          elementFromPoint(double x, double y);
    sequence<Element> elementsFromPoint(double x, double y);
    CaretPosition?    caretPositionFromPoint(double x, double y);
    readonly attribute Element?       activeElement;
    readonly attribute StyleSheetList styleSheets;
};

Document implements DocumentOrShadowRoot;
ShadowRoot implements DocumentOrShadowRoot;