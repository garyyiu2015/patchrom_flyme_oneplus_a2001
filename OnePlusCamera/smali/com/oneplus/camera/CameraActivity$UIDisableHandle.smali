.class final Lcom/oneplus/camera/CameraActivity$UIDisableHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIDisableHandle"
.end annotation


# instance fields
.field public final flags:I

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field public final time:Ljava/util/Date;

.field public final usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;I)V
    .locals 4
    .param p2, "usage"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 618
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 619
    const-string v0, "DisableCaptureUI"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->time:Ljava/util/Date;

    .line 621
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->usage:Ljava/lang/String;

    .line 622
    iput p3, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->flags:I

    .line 623
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->enableCaptureUI(Lcom/oneplus/camera/CameraActivity$UIDisableHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->access$600(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$UIDisableHandle;)V

    .line 629
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ Usage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->usage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/oneplus/camera/CameraActivity;->LOG_TIME_FORMAT:Ljava/text/DateFormat;
    invoke-static {}, Lcom/oneplus/camera/CameraActivity;->access$700()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$UIDisableHandle;->time:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
