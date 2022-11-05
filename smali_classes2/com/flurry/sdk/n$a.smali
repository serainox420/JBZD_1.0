.class public final enum Lcom/flurry/sdk/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/n$a;

.field public static final enum b:Lcom/flurry/sdk/n$a;

.field private static final synthetic d:[Lcom/flurry/sdk/n$a;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/flurry/sdk/n$a;

    const-string v1, "CALL_TO_ACTION"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n$a;

    .line 14
    new-instance v0, Lcom/flurry/sdk/n$a;

    const-string v1, "CLICK_TO_CALL"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/n$a;->b:Lcom/flurry/sdk/n$a;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/n$a;

    sget-object v1, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/n$a;->b:Lcom/flurry/sdk/n$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/n$a;->d:[Lcom/flurry/sdk/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/flurry/sdk/n$a;->c:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/n$a;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/n$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/n$a;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/flurry/sdk/n$a;->d:[Lcom/flurry/sdk/n$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/n$a;

    return-object v0
.end method
