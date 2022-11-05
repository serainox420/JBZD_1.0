.class public final enum Lcom/flurry/sdk/df;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/df;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/df;

.field public static final enum b:Lcom/flurry/sdk/df;

.field public static final enum c:Lcom/flurry/sdk/df;

.field public static final enum d:Lcom/flurry/sdk/df;

.field public static final enum e:Lcom/flurry/sdk/df;

.field private static final synthetic f:[Lcom/flurry/sdk/df;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/flurry/sdk/df;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/df;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/df;->a:Lcom/flurry/sdk/df;

    new-instance v0, Lcom/flurry/sdk/df;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/df;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/df;->b:Lcom/flurry/sdk/df;

    new-instance v0, Lcom/flurry/sdk/df;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/df;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/df;->c:Lcom/flurry/sdk/df;

    new-instance v0, Lcom/flurry/sdk/df;

    const-string v1, "VAST_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/df;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/df;->d:Lcom/flurry/sdk/df;

    new-instance v0, Lcom/flurry/sdk/df;

    const-string v1, "RICH_MEDIA"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/df;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/df;->e:Lcom/flurry/sdk/df;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/df;

    sget-object v1, Lcom/flurry/sdk/df;->a:Lcom/flurry/sdk/df;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/df;->b:Lcom/flurry/sdk/df;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/df;->c:Lcom/flurry/sdk/df;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/df;->d:Lcom/flurry/sdk/df;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/df;->e:Lcom/flurry/sdk/df;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/df;->f:[Lcom/flurry/sdk/df;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/df;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/flurry/sdk/df;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/df;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/df;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/sdk/df;->f:[Lcom/flurry/sdk/df;

    invoke-virtual {v0}, [Lcom/flurry/sdk/df;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/df;

    return-object v0
.end method
