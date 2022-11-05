.class public final enum Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;
.super Ljava/lang/Enum;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackableEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum loaded:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum videoClose:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum videoCollapse:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public static final enum videoExpand:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "loaded"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->loaded:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 113
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "start"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 114
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "firstQuartile"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 115
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "midpoint"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 116
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "thirdQuartile"

    invoke-direct {v0, v1, v7}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 117
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 118
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "videoExpand"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoExpand:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 119
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "videoCollapse"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoCollapse:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 120
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v1, "videoClose"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoClose:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 111
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->loaded:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoExpand:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoCollapse:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoClose:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->a:[Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->a:[Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    return-object v0
.end method
