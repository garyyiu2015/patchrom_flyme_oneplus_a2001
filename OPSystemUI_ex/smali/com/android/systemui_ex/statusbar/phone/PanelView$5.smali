.class Lcom/android/systemui_ex/statusbar/phone/PanelView$5;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->restoreBounceAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setIndicationControllerAlpha(F)V

    .line 604
    return-void
.end method