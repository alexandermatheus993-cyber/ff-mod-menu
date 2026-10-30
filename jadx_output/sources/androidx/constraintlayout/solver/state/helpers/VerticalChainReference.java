package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes53.dex */
public class VerticalChainReference extends ChainReference {
    private Object mBottomToBottom;
    private Object mBottomToTop;
    private Object mTopToBottom;
    private Object mTopToTop;

    public VerticalChainReference(State state) {
        super(state, State.Helper.VERTICAL_CHAIN);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            this.mState.constraints(it.next()).clearVertical();
        }
        Iterator<Object> it2 = this.mReferences.iterator();
        while (it2.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it2.next());
            if (constraintReference == null) {
                constraintReference = constraintReferenceConstraints;
                if (this.mTopToTop != null) {
                    constraintReference.topToTop(this.mTopToTop);
                } else if (this.mTopToBottom != null) {
                    constraintReference.topToBottom(this.mTopToBottom);
                } else {
                    constraintReference.topToTop(State.PARENT);
                }
            }
            if (constraintReference2 != null) {
                constraintReference2.bottomToTop(constraintReferenceConstraints.getKey());
                constraintReferenceConstraints.topToBottom(constraintReference2.getKey());
            }
            constraintReference2 = constraintReferenceConstraints;
        }
        if (constraintReference2 != null) {
            if (this.mBottomToTop != null) {
                constraintReference2.bottomToTop(this.mBottomToTop);
            } else if (this.mBottomToBottom != null) {
                constraintReference2.bottomToBottom(this.mBottomToBottom);
            } else {
                constraintReference2.bottomToBottom(State.PARENT);
            }
        }
        if (constraintReference != null && this.mBias != 0.5f) {
            constraintReference.verticalBias(this.mBias);
        }
        switch (this.mStyle) {
            case SPREAD:
                constraintReference.setVerticalChainStyle(0);
                break;
            case SPREAD_INSIDE:
                constraintReference.setVerticalChainStyle(1);
                break;
            case PACKED:
                constraintReference.setVerticalChainStyle(2);
                break;
        }
    }

    public void topToTop(Object obj) {
        this.mTopToTop = obj;
    }

    public void topToBottom(Object obj) {
        this.mTopToBottom = obj;
    }

    public void bottomToTop(Object obj) {
        this.mBottomToTop = obj;
    }

    public void bottomToBottom(Object obj) {
        this.mBottomToBottom = obj;
    }
}
