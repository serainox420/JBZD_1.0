.class public abstract Lcom/millennialmedia/internal/AdPlacement;
.super Ljava/lang/Object;
.source "AdPlacement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/AdPlacement$RequestState;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected volatile a:Ljava/lang/String;

.field protected volatile b:Lcom/millennialmedia/internal/PlayList;

.field protected volatile c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field protected d:Lcom/millennialmedia/XIncentivizedEventListener;

.field public placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacement;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "idle"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->a:Ljava/lang/String;

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "PlacementId must be a non null."

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "PlacementId cannot be an empty string."

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 3

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incentive earned <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->d:Lcom/millennialmedia/XIncentivizedEventListener;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lcom/millennialmedia/internal/AdPlacement$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/millennialmedia/internal/AdPlacement$1;-><init>(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;Lcom/millennialmedia/XIncentivizedEventListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 111
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method public xGetIncentivizedListener()Lcom/millennialmedia/XIncentivizedEventListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->d:Lcom/millennialmedia/XIncentivizedEventListener;

    return-object v0
.end method

.method public xSetIncentivizedListener(Lcom/millennialmedia/XIncentivizedEventListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->d:Lcom/millennialmedia/XIncentivizedEventListener;

    .line 140
    return-void
.end method
