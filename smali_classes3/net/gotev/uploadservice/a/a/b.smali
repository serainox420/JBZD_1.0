.class public Lnet/gotev/uploadservice/a/a/b;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lnet/gotev/uploadservice/a/c;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/a/a/b;->a:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/a/a/b;->b:Z

    .line 22
    const/16 v0, 0x3a98

    iput v0, p0, Lnet/gotev/uploadservice/a/a/b;->c:I

    .line 23
    const/16 v0, 0x7530

    iput v0, p0, Lnet/gotev/uploadservice/a/a/b;->d:I

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/a/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lnet/gotev/uploadservice/a/a/c;

    iget-boolean v3, p0, Lnet/gotev/uploadservice/a/a/b;->a:Z

    iget-boolean v4, p0, Lnet/gotev/uploadservice/a/a/b;->b:Z

    iget v5, p0, Lnet/gotev/uploadservice/a/a/b;->c:I

    iget v6, p0, Lnet/gotev/uploadservice/a/a/b;->d:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZII)V

    return-object v0
.end method
