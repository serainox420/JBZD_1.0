.class public final enum Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;
.super Ljava/lang/Enum;
.source "OXMManagersResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/core/sdk/OXMManagersResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManagerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

.field public static final enum AD_TRUTH_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

.field public static final enum DEVICE_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

.field public static final enum EVENTS_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

.field public static final enum LOCATION_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

.field public static final enum NETWORK_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

.field public static final enum PREFERENCES_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    const-string v1, "DEVICE_MANAGER"

    invoke-direct {v0, v1, v3}, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->DEVICE_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    .line 69
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    const-string v1, "EVENTS_MANAGER"

    invoke-direct {v0, v1, v4}, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->EVENTS_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    .line 72
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    const-string v1, "LOCATION_MANAGER"

    invoke-direct {v0, v1, v5}, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->LOCATION_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    .line 75
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    const-string v1, "NETWORK_MANAGER"

    invoke-direct {v0, v1, v6}, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->NETWORK_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    .line 78
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    const-string v1, "PREFERENCES_MANAGER"

    invoke-direct {v0, v1, v7}, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->PREFERENCES_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    .line 81
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    const-string v1, "AD_TRUTH_MANAGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->AD_TRUTH_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->DEVICE_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->EVENTS_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->LOCATION_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->NETWORK_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->PREFERENCES_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->AD_TRUTH_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->$VALUES:[Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    return-object v0
.end method

.method public static values()[Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->$VALUES:[Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0}, [Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    return-object v0
.end method
