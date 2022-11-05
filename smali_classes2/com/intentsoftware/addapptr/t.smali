.class public Lcom/intentsoftware/addapptr/t;
.super Ljava/lang/Object;
.source "PlacementConfig.java"


# instance fields
.field private final acceptsGeneralRules:Z

.field private final maxImpressionsPerDay:I

.field private final maxImpressionsPerHour:I

.field private final maxImpressionsPerSession:I

.field private final minTimeBetweenImpressions:I

.field private final placementName:Ljava/lang/String;

.field private final refreshTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JIIIIZ)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/intentsoftware/addapptr/t;->placementName:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/intentsoftware/addapptr/t;->refreshTime:J

    .line 17
    iput p4, p0, Lcom/intentsoftware/addapptr/t;->maxImpressionsPerSession:I

    .line 18
    iput p5, p0, Lcom/intentsoftware/addapptr/t;->minTimeBetweenImpressions:I

    .line 19
    iput p6, p0, Lcom/intentsoftware/addapptr/t;->maxImpressionsPerHour:I

    .line 20
    iput p7, p0, Lcom/intentsoftware/addapptr/t;->maxImpressionsPerDay:I

    .line 21
    iput-boolean p8, p0, Lcom/intentsoftware/addapptr/t;->acceptsGeneralRules:Z

    .line 22
    return-void
.end method


# virtual methods
.method acceptsGeneralRules()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/t;->acceptsGeneralRules:Z

    return v0
.end method

.method getMaxImpressionsPerDay()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/intentsoftware/addapptr/t;->maxImpressionsPerDay:I

    return v0
.end method

.method getMaxImpressionsPerHour()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/intentsoftware/addapptr/t;->maxImpressionsPerHour:I

    return v0
.end method

.method getMaxImpressionsPerSession()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/intentsoftware/addapptr/t;->maxImpressionsPerSession:I

    return v0
.end method

.method getMinTimeBetweenImpressions()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/intentsoftware/addapptr/t;->minTimeBetweenImpressions:I

    return v0
.end method

.method getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intentsoftware/addapptr/t;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method getRefreshTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/t;->refreshTime:J

    return-wide v0
.end method
