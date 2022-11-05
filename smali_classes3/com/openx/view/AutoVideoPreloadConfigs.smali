.class public final enum Lcom/openx/view/AutoVideoPreloadConfigs;
.super Ljava/lang/Enum;
.source "AutoVideoPreloadConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/view/AutoVideoPreloadConfigs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/view/AutoVideoPreloadConfigs;

.field public static final enum AlwaysAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

.field public static final enum NoAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

.field public static final enum WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/openx/view/AutoVideoPreloadConfigs;

    const-string v1, "NoAutoPreload"

    invoke-direct {v0, v1, v2}, Lcom/openx/view/AutoVideoPreloadConfigs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->NoAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 11
    new-instance v0, Lcom/openx/view/AutoVideoPreloadConfigs;

    const-string v1, "AlwaysAutoPreload"

    invoke-direct {v0, v1, v3}, Lcom/openx/view/AutoVideoPreloadConfigs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->AlwaysAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 12
    new-instance v0, Lcom/openx/view/AutoVideoPreloadConfigs;

    const-string v1, "WifiOnlyAutoPreload"

    invoke-direct {v0, v1, v4}, Lcom/openx/view/AutoVideoPreloadConfigs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/view/AutoVideoPreloadConfigs;

    sget-object v1, Lcom/openx/view/AutoVideoPreloadConfigs;->NoAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/view/AutoVideoPreloadConfigs;->AlwaysAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->$VALUES:[Lcom/openx/view/AutoVideoPreloadConfigs;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/view/AutoVideoPreloadConfigs;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/openx/view/AutoVideoPreloadConfigs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AutoVideoPreloadConfigs;

    return-object v0
.end method

.method public static values()[Lcom/openx/view/AutoVideoPreloadConfigs;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->$VALUES:[Lcom/openx/view/AutoVideoPreloadConfigs;

    invoke-virtual {v0}, [Lcom/openx/view/AutoVideoPreloadConfigs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/view/AutoVideoPreloadConfigs;

    return-object v0
.end method
