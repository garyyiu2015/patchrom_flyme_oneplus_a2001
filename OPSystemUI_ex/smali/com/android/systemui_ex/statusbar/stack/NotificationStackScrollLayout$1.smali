.class Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # invokes: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$000(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$102(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;Z)Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method