.class Lnet/gotev/uploadservice/j$4;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/j;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/gotev/uploadservice/i;

.field final synthetic b:Lnet/gotev/uploadservice/UploadInfo;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lnet/gotev/uploadservice/j;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/j;Lnet/gotev/uploadservice/i;Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lnet/gotev/uploadservice/j$4;->d:Lnet/gotev/uploadservice/j;

    iput-object p2, p0, Lnet/gotev/uploadservice/j$4;->a:Lnet/gotev/uploadservice/i;

    iput-object p3, p0, Lnet/gotev/uploadservice/j$4;->b:Lnet/gotev/uploadservice/UploadInfo;

    iput-object p4, p0, Lnet/gotev/uploadservice/j$4;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lnet/gotev/uploadservice/j$4;->a:Lnet/gotev/uploadservice/i;

    iget-object v1, p0, Lnet/gotev/uploadservice/j$4;->d:Lnet/gotev/uploadservice/j;

    iget-object v1, v1, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/j$4;->b:Lnet/gotev/uploadservice/UploadInfo;

    iget-object v3, p0, Lnet/gotev/uploadservice/j$4;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lnet/gotev/uploadservice/i;->a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/Exception;)V

    .line 396
    return-void
.end method
