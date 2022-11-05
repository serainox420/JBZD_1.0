.class Lnet/gotev/uploadservice/Logger$b;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lnet/gotev/uploadservice/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lnet/gotev/uploadservice/Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/Logger;-><init>(Lnet/gotev/uploadservice/Logger$1;)V

    sput-object v0, Lnet/gotev/uploadservice/Logger$b;->a:Lnet/gotev/uploadservice/Logger;

    return-void
.end method

.method static synthetic a()Lnet/gotev/uploadservice/Logger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lnet/gotev/uploadservice/Logger$b;->a:Lnet/gotev/uploadservice/Logger;

    return-object v0
.end method
