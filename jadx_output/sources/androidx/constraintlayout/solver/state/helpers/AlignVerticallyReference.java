package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes53.dex */
public class AlignVerticallyReference extends HelperReference {
    private float mBias;
    private Object mBottomToBottom;
    private Object mBottomToTop;
    private Object mTopToBottom;
    private Object mTopToTop;

    public AlignVerticallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.mBias = 0.5f;
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            ConstraintReference constraintReferenceConstraints = this.mState.constraints(it.next());
            constraintReferenceConstraints.clearVertical();
            if (this.mTopToTop != null) {
                constraintReferenceConstraints.topToTop(this.mTopToTop);
            } else if (this.mTopToBottom != null) {
                constraintReferenceConstraints.topToBottom(this.mTopToBottom);
            } else {
                constraintReferenceConstraints.topToTop(State.PARENT);
            }
            if (this.mBottomToTop != null) {
                constraintReferenceConstraints.bottomToTop(this.mBottomToTop);
            } else if (this.mBottomToBottom != null) {
                constraintReferenceConstraints.bottomToBottom(this.mBottomToBottom);
            } else {
                constraintReferenceConstraints.bottomToBottom(State.PARENT);
            }
            if (this.mBias != 0.5f) {
                constraintReferenceConstraints.verticalBias(this.mBias);
            }
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

    public void bias(float f) {
        this.mBias = f;
    }
}
