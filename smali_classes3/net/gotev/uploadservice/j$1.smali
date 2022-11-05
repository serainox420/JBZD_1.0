.class Lnet/gotev/uploadservice/j$1;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/j;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/gotev/uploadservice/i;

.field final synthetic b:Lnet/gotev/uploadservice/UploadInfo;

.field final synthetic c:Lnet/gotev/uploadservice/j;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/j;Lnet/gotev/uploadservice/i;Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lnet/gotev/uploadservice/j$1;->c:Lnet/gotev/uploadservice/j;

    iput-object p2, p0, Lnet/gotev/uploadservice/j$1;->a:Lnet/gotev/uploadservice/i;

    iput-object p3, p0, Lnet/gotev/uploadservice/j$1;->b:Lnet/gotev/uploadservice/UploadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lnet/gotev/uploadservice/j$1;->a:Lnet/gotev/uploadservice/i;

    iget-object v1, p0, Lnet/gotev/uploadservice/j$1;->c:Lnet/gotev/uploadservice/j;

    iget-object v1, v1, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/j$1;->b:Lnet/gotev/uploadservice/UploadInfo;

    invoke-interface {v0, v1, v2}, Lnet/gotev/uploadservice/i;->a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V

    .line 227
    return-void
.end method
