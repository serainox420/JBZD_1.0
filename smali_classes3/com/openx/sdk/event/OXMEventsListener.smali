.class public interface abstract Lcom/openx/sdk/event/OXMEventsListener;
.super Ljava/lang/Object;
.source "OXMEventsListener.java"


# virtual methods
.method public abstract fireEvent(Lcom/openx/sdk/event/OXMEvent;)V
.end method

.method public abstract registerEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V
.end method

.method public abstract unregisterAllEventListeners()V
.end method

.method public abstract unregisterEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V
.end method
