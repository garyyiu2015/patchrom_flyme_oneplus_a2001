.class Lcom/android/systemui_ex/recent/RecentsVerticalScrollView$3;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui_ex/recent/RecentsVerticalScrollView$3;->this$0:Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;

    iput-object p2, p0, Lcom/android/systemui_ex/recent/RecentsVerticalScrollView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui_ex/recent/RecentsVerticalScrollView$3;->this$0:Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;

    # getter for: Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui_ex/recent/RecentsCallback;
    invoke-static {v0}, Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;->access$000(Lcom/android/systemui_ex/recent/RecentsVerticalScrollView;)Lcom/android/systemui_ex/recent/RecentsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentsVerticalScrollView$3;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    .line 136
    return-void
.end method