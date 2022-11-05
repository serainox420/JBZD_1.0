.class public Lcom/millennialmedia/internal/AdPlacement$RequestState;
.super Ljava/lang/Object;
.source "AdPlacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestState"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/millennialmedia/internal/AdPlacementReporter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    .line 48
    return-void
.end method


# virtual methods
.method public compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    iget v2, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    if-eq v1, v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->b:I

    iget v2, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->b:I

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    iget v1, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    if-eq v0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;-><init>()V

    .line 98
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->a:I

    .line 99
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->b:I

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->b:I

    .line 100
    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->c:Lcom/millennialmedia/internal/AdPlacementReporter;

    iput-object v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->c:Lcom/millennialmedia/internal/AdPlacementReporter;

    .line 102
    return-object v0
.end method

.method public getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->c:Lcom/millennialmedia/internal/AdPlacementReporter;

    return-object v0
.end method

.method public getItemHash()I
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->b:I

    .line 55
    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->b:I

    return v0
.end method

.method public setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->c:Lcom/millennialmedia/internal/AdPlacementReporter;

    .line 62
    return-void
.end method
