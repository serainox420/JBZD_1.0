.class public final Lcom/flurry/sdk/hq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/hq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7
    sput v3, Lcom/flurry/sdk/hq;->a:I

    .line 8
    sput v4, Lcom/flurry/sdk/hq;->b:I

    .line 9
    sput v0, Lcom/flurry/sdk/hq;->c:I

    .line 6
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/flurry/sdk/hq;->a:I

    aput v2, v0, v1

    sget v1, Lcom/flurry/sdk/hq;->b:I

    aput v1, v0, v3

    sget v1, Lcom/flurry/sdk/hq;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/hq;->d:[I

    return-void
.end method
