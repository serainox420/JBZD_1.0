.class public Lcom/openx/sdk/event/OXMEvent;
.super Ljava/lang/Object;
.source "OXMEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/sdk/event/OXMEvent$OXMEventType;
    }
.end annotation


# instance fields
.field private mArgs:Ljava/lang/Object;

.field private mEventType:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

.field private mSender:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/openx/sdk/event/OXMEvent;->mEventType:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    .line 52
    iput-object p2, p0, Lcom/openx/sdk/event/OXMEvent;->mSender:Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Lcom/openx/sdk/event/OXMEvent;->mArgs:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/openx/sdk/event/OXMEvent;->mArgs:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventType()Lcom/openx/sdk/event/OXMEvent$OXMEventType;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/openx/sdk/event/OXMEvent;->mEventType:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    return-object v0
.end method

.method public getSender()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/openx/sdk/event/OXMEvent;->mSender:Ljava/lang/Object;

    return-object v0
.end method
