.class Lcom/oneplus/camera/ui/SavedMediaCue$6;
.super Ljava/lang/Object;
.source "SavedMediaCue.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SavedMediaCue;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SavedMediaCue;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SavedMediaCue;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/camera/ui/SavedMediaCue$6;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 110
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/SavedMediaCue$6;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$6;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/oneplus/camera/ui/SavedMediaCue;->m_ValidBurstFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$502(Lcom/oneplus/camera/ui/SavedMediaCue;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/oneplus/camera/ui/SavedMediaCue$6;->this$0:Lcom/oneplus/camera/ui/SavedMediaCue;

    # invokes: Lcom/oneplus/camera/ui/SavedMediaCue;->onBurstSaveEventReceived()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/SavedMediaCue;->access$400(Lcom/oneplus/camera/ui/SavedMediaCue;)V

    .line 119
    :cond_0
    return-void
.end method
