/*******************************************************************************
 * Copyright (c) 2014 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8;

@SuppressWarnings("serial")
public class V8ResultUndefined extends V8RuntimeException {

    public V8ResultUndefined(final String message) {
        super(message);
    }

    public V8ResultUndefined() {
        super();
    }
}
