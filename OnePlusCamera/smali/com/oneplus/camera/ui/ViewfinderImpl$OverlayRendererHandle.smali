.class final Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;
.super Lcom/oneplus/base/Handle;
.source "ViewfinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ViewfinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayRendererHandle"
.end annotation


# instance fields
.field public final renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

.field final synthetic this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;)V
    .locals 1
    .param p2, "renderer"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    .line 68
    const-string v0, "OverlayRenderer"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;->renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

    .line 70
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->removeRenderer(Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$000(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V

    .line 76
    return-void
.end method