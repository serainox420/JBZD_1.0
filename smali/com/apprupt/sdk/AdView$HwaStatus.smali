.class final enum Lcom/apprupt/sdk/AdView$HwaStatus;
.super Ljava/lang/Enum;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HwaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/AdView$HwaStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/AdView$HwaStatus;

.field public static final enum b:Lcom/apprupt/sdk/AdView$HwaStatus;

.field public static final enum c:Lcom/apprupt/sdk/AdView$HwaStatus;

.field private static final synthetic d:[Lcom/apprupt/sdk/AdView$HwaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 721
    new-instance v0, Lcom/apprupt/sdk/AdView$HwaStatus;

    const-string v1, "CHECK"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/AdView$HwaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/AdView$HwaStatus;->a:Lcom/apprupt/sdk/AdView$HwaStatus;

    new-instance v0, Lcom/apprupt/sdk/AdView$HwaStatus;

    const-string v1, "FORCE_TRUE"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/AdView$HwaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/AdView$HwaStatus;->b:Lcom/apprupt/sdk/AdView$HwaStatus;

    new-instance v0, Lcom/apprupt/sdk/AdView$HwaStatus;

    const-string v1, "FORCE_FALSE"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/AdView$HwaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/AdView$HwaStatus;->c:Lcom/apprupt/sdk/AdView$HwaStatus;

    .line 720
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apprupt/sdk/AdView$HwaStatus;

    sget-object v1, Lcom/apprupt/sdk/AdView$HwaStatus;->a:Lcom/apprupt/sdk/AdView$HwaStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/AdView$HwaStatus;->b:Lcom/apprupt/sdk/AdView$HwaStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/AdView$HwaStatus;->c:Lcom/apprupt/sdk/AdView$HwaStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apprupt/sdk/AdView$HwaStatus;->d:[Lcom/apprupt/sdk/AdView$HwaStatus;

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
    .line 720
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/AdView$HwaStatus;
    .locals 1

    .prologue
    .line 720
    const-class v0, Lcom/apprupt/sdk/AdView$HwaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/AdView$HwaStatus;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/AdView$HwaStatus;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/apprupt/sdk/AdView$HwaStatus;->d:[Lcom/apprupt/sdk/AdView$HwaStatus;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/AdView$HwaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/AdView$HwaStatus;

    return-object v0
.end method
