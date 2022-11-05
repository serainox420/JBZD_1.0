.class Lnet/gotev/uploadservice/b/d$a;
.super Ljava/lang/Object;
.source "SchemeHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lnet/gotev/uploadservice/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lnet/gotev/uploadservice/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/b/d;-><init>(Lnet/gotev/uploadservice/b/d$1;)V

    sput-object v0, Lnet/gotev/uploadservice/b/d$a;->a:Lnet/gotev/uploadservice/b/d;

    return-void
.end method

.method static synthetic a()Lnet/gotev/uploadservice/b/d;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lnet/gotev/uploadservice/b/d$a;->a:Lnet/gotev/uploadservice/b/d;

    return-object v0
.end method
