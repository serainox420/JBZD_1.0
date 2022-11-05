.class public final Lcom/openx/sdk/event/OXMEventsManagerImpl;
.super Lcom/openx/core/sdk/OXMBaseManager;
.source "OXMEventsManagerImpl.java"

# interfaces
.implements Lcom/openx/sdk/event/OXMEventsListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEventListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/openx/sdk/event/OXMEvent$OXMEventType;",
            "Ljava/util/Vector",
            "<",
            "Lcom/openx/sdk/event/OXMEventsHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "OXMEventsManagerImpl"

    sput-object v0, Lcom/openx/sdk/event/OXMEventsManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMBaseManager;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/event/OXMEventsManagerImpl;->mEventListeners:Ljava/util/Hashtable;

    return-void
.end method

.method private getEventsListener()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/openx/sdk/event/OXMEvent$OXMEventType;",
            "Ljava/util/Vector",
            "<",
            "Lcom/openx/sdk/event/OXMEventsHandler;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/sdk/event/OXMEventsManagerImpl;->mEventListeners:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->dispose()V

    .line 129
    invoke-virtual {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->unregisterAllEventListeners()V

    .line 130
    return-void
.end method

.method public fireEvent(Lcom/openx/sdk/event/OXMEvent;)V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/openx/sdk/event/OXMEventsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIRING EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/sdk/event/OXMEvent;->getEventType()Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openx/sdk/event/OXMEvent;->getEventType()Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 105
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 108
    invoke-virtual {p1}, Lcom/openx/sdk/event/OXMEvent;->getEventType()Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 111
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 112
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/event/OXMEventsHandler;

    .line 115
    invoke-interface {v0, p1}, Lcom/openx/sdk/event/OXMEventsHandler;->onPerform(Lcom/openx/sdk/event/OXMEvent;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/openx/core/sdk/OXMBaseManager;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public registerEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/openx/sdk/event/OXMEventsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 44
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 50
    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterAllEventListeners()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 83
    :cond_0
    return-void
.end method

.method public unregisterEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;->getEventsListener()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 66
    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method
