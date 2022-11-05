.class public final enum Lcom/flurry/sdk/gj$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/gj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/gj$a;

.field public static final enum b:Lcom/flurry/sdk/gj$a;

.field private static final synthetic c:[Lcom/flurry/sdk/gj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/flurry/sdk/gj$a;

    const-string v1, "INSTREAM"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    .line 25
    new-instance v0, Lcom/flurry/sdk/gj$a;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/gj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gj$a;->b:Lcom/flurry/sdk/gj$a;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/gj$a;

    sget-object v1, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gj$a;->b:Lcom/flurry/sdk/gj$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/gj$a;->c:[Lcom/flurry/sdk/gj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/gj$a;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/gj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gj$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/gj$a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/sdk/gj$a;->c:[Lcom/flurry/sdk/gj$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/gj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/gj$a;

    return-object v0
.end method
