.class Lcom/oneplus/camera/LegacyCameraImpl$5;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$5;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$5;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    # invokes: Lcom/oneplus/camera/LegacyCameraImpl;->onPictureReceived([BLandroid/hardware/Camera;)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->access$500(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V

    .line 151
    return-void
.end method
