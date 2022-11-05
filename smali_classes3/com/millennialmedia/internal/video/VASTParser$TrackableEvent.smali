.class public final enum Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
.super Ljava/lang/Enum;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackableEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public static final enum thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "creativeView"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 219
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "start"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 220
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "firstQuartile"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 221
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "midpoint"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 222
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "thirdQuartile"

    invoke-direct {v0, v1, v7}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 223
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 224
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "closeLinear"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 225
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "skip"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 226
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    const-string v1, "progress"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 217
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->a:[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

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
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .locals 1

    .prologue
    .line 217
    const-class v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->a:[Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    return-object v0
.end method
