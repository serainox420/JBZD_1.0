.class Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;
.super Ljava/lang/Object;
.source "OnOffSwitchImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoatOnOffLoop"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;
    }
.end annotation


# static fields
.field private static final MIN_MILLIS_BETWEEN_RUNS:J

.field private static final TAG:Ljava/lang/String; = "MoatOnOffLoop"


# instance fields
.field private lastStatus:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

.field private final listener:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;

.field private final moatNet:Lcom/moat/analytics/mobile/aol/MoatNet;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->MIN_MILLIS_BETWEEN_RUNS:J

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->MIN_MILLIS_BETWEEN_RUNS:J

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/MoatNet;Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;)V
    .locals 4

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->lastStatus:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 153
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->moatNet:Lcom/moat/analytics/mobile/aol/MoatNet;

    .line 154
    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->listener:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4724e28a731f8ba73e9eecc4d5c807705dd80963"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/status.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->url:Ljava/lang/String;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/MoatNet;Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$1;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/MoatNet;Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;)Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->listener:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;

    return-object v0
.end method

.method private requestStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 4

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.7.11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->moatNet:Lcom/moat/analytics/mobile/aol/MoatNet;

    invoke-interface {v1, v0}, Lcom/moat/analytics/mobile/aol/MoatNet;->request(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 220
    :goto_0
    return-object v0

    .line 216
    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/aol/MoatConfig;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/aol/MoatConfig;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/aol/MoatConfig;->isDebugEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$202(Z)Z

    .line 219
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/aol/MoatConfig;->getVWIntervalMillis()I

    move-result v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$602(I)I

    .line 220
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/aol/MoatConfig;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    goto :goto_0
.end method

.method private runUnsafe()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    .line 172
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 173
    sget-wide v4, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->MIN_MILLIS_BETWEEN_RUNS:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 175
    const-wide/16 v4, 0xa

    :try_start_0
    sget-wide v6, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->MIN_MILLIS_BETWEEN_RUNS:J

    add-long/2addr v4, v6

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->requestStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v2

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 186
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->lastStatus:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    invoke-virtual {v2, v3}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    sget-object v3, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MoatOnOffLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moat is now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->lastStatus:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    iput-object v2, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->lastStatus:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 192
    new-instance v3, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;

    invoke-direct {v3, p0, v2}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;-><init>(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    sget-object v3, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    const-string v3, "MoatOnOffLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interruption attempted (and ignored): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->runUnsafe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    iput-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->lastStatus:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 164
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
