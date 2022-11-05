.class public Lcom/madsdk/javascript/JavascriptInterface;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"


# instance fields
.field private mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->close()V

    .line 37
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 147
    const-class v1, Lcom/madsdk/CalendarEvent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/CalendarEvent;

    .line 148
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1, v0}, Lcom/madsdk/javascript/MraidEventsListener;->createCalendarEvent(Lcom/madsdk/CalendarEvent;)V

    .line 149
    return-void
.end method

.method public expand()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->expand()V

    .line 42
    return-void
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getCurrentPosition()Lcom/madsdk/javascript/PositionProperties;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getDefaultPosition()Lcom/madsdk/javascript/PositionProperties;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getExpandProperties()Lcom/madsdk/javascript/ExpandProperties;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getMaxSize()Lcom/madsdk/javascript/SizeProperties;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getOrientationProperties()Lcom/madsdk/javascript/OrientationProperties;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->getPlacementType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResizeProperties()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getResizeProperties()Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1}, Lcom/madsdk/javascript/MraidEventsListener;->getScreenSize()Lcom/madsdk/javascript/SizeProperties;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isViewable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->isViewable()Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0, p1}, Lcom/madsdk/javascript/MraidEventsListener;->open(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0, p1}, Lcom/madsdk/javascript/MraidEventsListener;->playVideo(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public resize()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->resize()V

    .line 47
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 52
    const-class v1, Lcom/madsdk/javascript/ExpandProperties;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/javascript/ExpandProperties;

    .line 53
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1, v0}, Lcom/madsdk/javascript/MraidEventsListener;->setExpandProperties(Lcom/madsdk/javascript/ExpandProperties;)V

    .line 54
    return-void
.end method

.method public setMraidEventsListener(Lcom/madsdk/javascript/MraidEventsListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 78
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 66
    const-class v1, Lcom/madsdk/javascript/OrientationProperties;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/javascript/OrientationProperties;

    .line 67
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1, v0}, Lcom/madsdk/javascript/MraidEventsListener;->setOrientationProperties(Lcom/madsdk/javascript/OrientationProperties;)V

    .line 68
    return-void
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 59
    const-class v1, Lcom/madsdk/javascript/ResizeProperties;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/javascript/ResizeProperties;

    .line 60
    iget-object v1, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v1, v0}, Lcom/madsdk/javascript/MraidEventsListener;->setResizeProperties(Lcom/madsdk/javascript/ResizeProperties;)V

    .line 61
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0, p1}, Lcom/madsdk/javascript/MraidEventsListener;->storePicture(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/madsdk/javascript/JavascriptInterface;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0, p1}, Lcom/madsdk/javascript/MraidEventsListener;->useCustomClose(Z)V

    .line 32
    return-void
.end method
