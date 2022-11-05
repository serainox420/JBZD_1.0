.class public final enum Lcom/openx/sdk/event/OXMEvent$OXMEventType;
.super Ljava/lang/Enum;
.source "OXMEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/event/OXMEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OXMEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/sdk/event/OXMEvent$OXMEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum ACTION_HAS_BEGAN:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum ACTION_HAS_DONE:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum CONFIGURATION_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum INTERSTITIAL_WINDOW_CLOSED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum LOG:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field public static final enum ORIENTATION_PROPERTIES_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "INTERSTITIAL_WINDOW_CLOSED"

    invoke-direct {v0, v1, v3}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->INTERSTITIAL_WINDOW_CLOSED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 19
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "CLOSE_ACTIVE_INTERNAL_WINDOW"

    invoke-direct {v0, v1, v4}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 21
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "ACTION_HAS_BEGAN"

    invoke-direct {v0, v1, v5}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ACTION_HAS_BEGAN:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 26
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "ACTION_HAS_DONE"

    invoke-direct {v0, v1, v6}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ACTION_HAS_DONE:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 28
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "CONFIGURATION_CHANGED"

    invoke-direct {v0, v1, v7}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CONFIGURATION_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 30
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "ORIENTATION_PROPERTIES_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ORIENTATION_PROPERTIES_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 32
    new-instance v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    const-string v1, "LOG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->LOG:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->INTERSTITIAL_WINDOW_CLOSED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ACTION_HAS_BEGAN:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ACTION_HAS_DONE:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CONFIGURATION_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->ORIENTATION_PROPERTIES_CHANGED:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->LOG:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->$VALUES:[Lcom/openx/sdk/event/OXMEvent$OXMEventType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/sdk/event/OXMEvent$OXMEventType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    return-object v0
.end method

.method public static values()[Lcom/openx/sdk/event/OXMEvent$OXMEventType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->$VALUES:[Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    invoke-virtual {v0}, [Lcom/openx/sdk/event/OXMEvent$OXMEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    return-object v0
.end method
