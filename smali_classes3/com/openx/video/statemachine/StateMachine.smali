.class public Lcom/openx/video/statemachine/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/video/statemachine/StateMachine$1;,
        Lcom/openx/video/statemachine/StateMachine$WindowStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$AdSkippedStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$AdStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$PreparedStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;,
        Lcom/openx/video/statemachine/StateMachine$Event;
    }
.end annotation


# instance fields
.field adPlaying:Lcom/openx/video/statemachine/BaseState;

.field adSkippableState:Lcom/openx/video/statemachine/BaseState;

.field adSkippedState:Lcom/openx/video/statemachine/BaseState;

.field adState:Lcom/openx/video/statemachine/BaseState;

.field collapsed:Lcom/openx/video/statemachine/BaseState;

.field completed:Lcom/openx/video/statemachine/BaseState;

.field contentPlaying:Lcom/openx/video/statemachine/BaseState;

.field endOfPlaylist:Lcom/openx/video/statemachine/BaseState;

.field public enumAdSkippableState:Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;

.field public enumAdSkippedState:Lcom/openx/video/statemachine/StateMachine$AdSkippedStateEnum;

.field public enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

.field public enumExpandedState:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

.field public enumMutedState:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

.field public enumPlaylistState:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

.field public enumPreparedState:Lcom/openx/video/statemachine/StateMachine$PreparedStateEnum;

.field public enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

.field public enumWindowState:Lcom/openx/video/statemachine/StateMachine$WindowStateEnum;

.field expanded:Lcom/openx/video/statemachine/BaseState;

.field expandedState:Lcom/openx/video/statemachine/BaseState;

.field inPlaylist:Lcom/openx/video/statemachine/BaseState;

.field private isOrientationChanged:Z

.field muted:Lcom/openx/video/statemachine/BaseState;

.field mutedState:Lcom/openx/video/statemachine/BaseState;

.field notPlaylist:Lcom/openx/video/statemachine/BaseState;

.field notSkippable:Lcom/openx/video/statemachine/BaseState;

.field notSkipped:Lcom/openx/video/statemachine/BaseState;

.field notStarted:Lcom/openx/video/statemachine/BaseState;

.field paused:Lcom/openx/video/statemachine/BaseState;

.field playlistState:Lcom/openx/video/statemachine/BaseState;

.field prepared:Lcom/openx/video/statemachine/BaseState;

.field preparedState:Lcom/openx/video/statemachine/BaseState;

.field preparing:Lcom/openx/video/statemachine/BaseState;

.field skippable:Lcom/openx/video/statemachine/BaseState;

.field skipped:Lcom/openx/video/statemachine/BaseState;

.field started:Lcom/openx/video/statemachine/BaseState;

.field unmuted:Lcom/openx/video/statemachine/BaseState;

.field private videoAdManager:Lcom/openx/model/video/VideoAdManager;

.field videoState:Lcom/openx/video/statemachine/BaseState;

.field windowHasFocus:Lcom/openx/video/statemachine/BaseState;

.field windowHasNoFocus:Lcom/openx/video/statemachine/BaseState;

.field windowState:Lcom/openx/video/statemachine/BaseState;


# direct methods
.method public constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    .line 125
    new-instance v0, Lcom/openx/video/statemachine/Started;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Started;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->started:Lcom/openx/video/statemachine/BaseState;

    .line 126
    new-instance v0, Lcom/openx/video/statemachine/Paused;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Paused;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->paused:Lcom/openx/video/statemachine/BaseState;

    .line 127
    new-instance v0, Lcom/openx/video/statemachine/AdPlaying;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/AdPlaying;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adPlaying:Lcom/openx/video/statemachine/BaseState;

    .line 128
    new-instance v0, Lcom/openx/video/statemachine/ContentPlaying;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/ContentPlaying;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->contentPlaying:Lcom/openx/video/statemachine/BaseState;

    .line 129
    new-instance v0, Lcom/openx/video/statemachine/Preparing;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Preparing;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->preparing:Lcom/openx/video/statemachine/BaseState;

    .line 130
    new-instance v0, Lcom/openx/video/statemachine/Prepared;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Prepared;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->prepared:Lcom/openx/video/statemachine/BaseState;

    .line 131
    new-instance v0, Lcom/openx/video/statemachine/Completed;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Completed;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->completed:Lcom/openx/video/statemachine/BaseState;

    .line 132
    new-instance v0, Lcom/openx/video/statemachine/SkippedNot;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/SkippedNot;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notSkipped:Lcom/openx/video/statemachine/BaseState;

    .line 133
    new-instance v0, Lcom/openx/video/statemachine/Skipped;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Skipped;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->skipped:Lcom/openx/video/statemachine/BaseState;

    .line 134
    new-instance v0, Lcom/openx/video/statemachine/Muted;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Muted;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->muted:Lcom/openx/video/statemachine/BaseState;

    .line 135
    new-instance v0, Lcom/openx/video/statemachine/UnMuted;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/UnMuted;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->unmuted:Lcom/openx/video/statemachine/BaseState;

    .line 136
    new-instance v0, Lcom/openx/video/statemachine/Skippable;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Skippable;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->skippable:Lcom/openx/video/statemachine/BaseState;

    .line 137
    new-instance v0, Lcom/openx/video/statemachine/SkippableNot;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/SkippableNot;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notSkippable:Lcom/openx/video/statemachine/BaseState;

    .line 138
    new-instance v0, Lcom/openx/video/statemachine/WindowHasFocus;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/WindowHasFocus;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowHasFocus:Lcom/openx/video/statemachine/BaseState;

    .line 139
    new-instance v0, Lcom/openx/video/statemachine/WindowHasNoFocus;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/WindowHasNoFocus;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowHasNoFocus:Lcom/openx/video/statemachine/BaseState;

    .line 141
    new-instance v0, Lcom/openx/video/statemachine/NotAPlaylist;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/NotAPlaylist;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notPlaylist:Lcom/openx/video/statemachine/BaseState;

    .line 142
    new-instance v0, Lcom/openx/video/statemachine/InPlaylist;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/InPlaylist;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->inPlaylist:Lcom/openx/video/statemachine/BaseState;

    .line 143
    new-instance v0, Lcom/openx/video/statemachine/EndOfPlaylist;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/EndOfPlaylist;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->endOfPlaylist:Lcom/openx/video/statemachine/BaseState;

    .line 145
    new-instance v0, Lcom/openx/video/statemachine/Collapsed;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Collapsed;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->collapsed:Lcom/openx/video/statemachine/BaseState;

    .line 146
    new-instance v0, Lcom/openx/video/statemachine/Expanded;

    invoke-direct {v0, p0}, Lcom/openx/video/statemachine/Expanded;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expanded:Lcom/openx/video/statemachine/BaseState;

    .line 148
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notStarted:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    .line 150
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adPlaying:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    .line 151
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notSkipped:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    .line 152
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notPlaylist:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    .line 153
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->collapsed:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    .line 154
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->skippable:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    .line 155
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowHasFocus:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    .line 156
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->preparing:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->preparedState:Lcom/openx/video/statemachine/BaseState;

    .line 158
    invoke-direct {p0}, Lcom/openx/video/statemachine/StateMachine;->setWindowHasFocus()V

    .line 159
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setSkippedNot()V

    .line 160
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setSkippable()V

    .line 164
    return-void
.end method

.method private setWindowHasFocus()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowHasFocus:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    .line 328
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 329
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 330
    return-void
.end method

.method private setWindowHasNoFocus()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowHasNoFocus:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    .line 335
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 336
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->windowState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 337
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->enumAdSkippableState:Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;->Skippable:Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 312
    :cond_0
    return-void
.end method

.method public closeLinear()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->enumAdSkippableState:Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;->Skippable:Lcom/openx/video/statemachine/StateMachine$AdSkippableStateEnum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSELINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 230
    :cond_0
    return-void
.end method

.method public getIsOrientationChanged()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/openx/video/statemachine/StateMachine;->isOrientationChanged:Z

    return v0
.end method

.method public getVideoAdManager()Lcom/openx/model/video/VideoAdManager;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    return-object v0
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->enumMutedState:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->Muted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    if-ne v0, v1, :cond_0

    .line 483
    const/4 v0, 0x1

    .line 486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 235
    if-eqz p1, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/openx/video/statemachine/StateMachine;->setWindowHasFocus()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    if-nez p1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/openx/video/statemachine/StateMachine;->setWindowHasNoFocus()V

    .line 243
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setPaused()V

    goto :goto_0
.end method

.method public orientationChanged(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getAllowFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getAllowFullscreenOnOrientationChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iput-boolean v2, p0, Lcom/openx/video/statemachine/StateMachine;->isOrientationChanged:Z

    .line 270
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iput-boolean v1, p0, Lcom/openx/video/statemachine/StateMachine;->isOrientationChanged:Z

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsFullScreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iput-boolean v1, p0, Lcom/openx/video/statemachine/StateMachine;->isOrientationChanged:Z

    goto :goto_0

    .line 282
    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsFullScreen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    const-string v0, "EXPAND"

    const-string v1, "onOrientationChanged@@@@@@@@@@  LANDSCAPE"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setExpanded()V

    goto :goto_0

    .line 293
    :cond_3
    const-string v0, "EXPAND"

    const-string v1, "onOrientationChanged@@@@@@@@@@   PORTRAIT"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setCollapsed()V

    goto :goto_0
.end method

.method public playClick()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]]  PlayHandler videoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    invoke-virtual {v2}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/openx/video/statemachine/StateMachine$1;->$SwitchMap$com$openx$video$statemachine$StateMachine$VideoStateEnum:[I

    iget-object v1, p0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    invoke-virtual {v1}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]]  PlayHandler event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    invoke-virtual {v2}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setPaused()V

    goto :goto_0

    .line 192
    :pswitch_1
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]]  PlayHandler event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    invoke-virtual {v2}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/openx/video/statemachine/StateMachine;->setStarted()V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAdPlaying()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adPlaying:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    .line 370
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 371
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 372
    return-void
.end method

.method public setCollapsed()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->collapsed:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    .line 466
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 467
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 469
    return-void
.end method

.method public setCompleted()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->completed:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    .line 400
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 401
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 402
    return-void
.end method

.method public setContentPlaying()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->contentPlaying:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    .line 377
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 378
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 379
    return-void
.end method

.method public setEndOfPlaylist()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->endOfPlaylist:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    .line 458
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 459
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 461
    return-void
.end method

.method public setExpanded()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expanded:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    .line 474
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 475
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->expandedState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 477
    return-void
.end method

.method public setInPlaylist()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->inPlaylist:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    .line 449
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 450
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 452
    return-void
.end method

.method public setIsOrientationChanged(Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/openx/video/statemachine/StateMachine;->isOrientationChanged:Z

    .line 258
    return-void
.end method

.method public setMuted()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->muted:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->mutedState:Lcom/openx/video/statemachine/BaseState;

    .line 356
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->mutedState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 357
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->mutedState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 358
    return-void
.end method

.method public setNotPlaylist()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notPlaylist:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    .line 440
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 441
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->playlistState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 443
    return-void
.end method

.method public setNotSkippable()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notSkippable:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    .line 416
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 417
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 418
    return-void
.end method

.method public setPaused()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->paused:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    .line 349
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 350
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->pause:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 351
    return-void
.end method

.method public setPrepared()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->prepared:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    .line 392
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 393
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 394
    return-void
.end method

.method public setPreparing()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->preparing:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    .line 384
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 385
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 386
    return-void
.end method

.method public setSkippable()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->skippable:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    .line 408
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 409
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippableState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 410
    return-void
.end method

.method public setSkipped()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->skipped:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    .line 424
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 425
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 426
    return-void
.end method

.method public setSkippedNot()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->notSkipped:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    .line 432
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 433
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->adSkippedState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 434
    return-void
.end method

.method public setStarted()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->started:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    .line 342
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 343
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->play:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 344
    return-void
.end method

.method public setUnMuted()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->unmuted:Lcom/openx/video/statemachine/BaseState;

    iput-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->mutedState:Lcom/openx/video/statemachine/BaseState;

    .line 363
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->mutedState:Lcom/openx/video/statemachine/BaseState;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/BaseState;->entry()V

    .line 364
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->mutedState:Lcom/openx/video/statemachine/BaseState;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0, v1}, Lcom/openx/video/statemachine/BaseState;->process(Lcom/openx/video/statemachine/StateMachine$Event;)V

    .line 365
    return-void
.end method

.method public touch()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->enumPreparedState:Lcom/openx/video/statemachine/StateMachine$PreparedStateEnum;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/openx/video/statemachine/StateMachine;->videoAdManager:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->TOUCH:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 217
    :cond_0
    return-void
.end method
