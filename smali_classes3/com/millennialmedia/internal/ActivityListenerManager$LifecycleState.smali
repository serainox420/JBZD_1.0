.class public final enum Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
.super Ljava/lang/Enum;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREATED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum DESTROYED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum STARTED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum STOPPED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field private static final synthetic a:[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->CREATED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STARTED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STOPPED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "DESTROYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->DESTROYED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->CREATED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STARTED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STOPPED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->DESTROYED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->a:[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->a:[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object v0
.end method
