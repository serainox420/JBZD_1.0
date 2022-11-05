.class Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;
.super Ljava/lang/Object;
.source "OnOffTrackerProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;,
        Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;,
        Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final MAX_EARLY_INVOCATION_QUEUE_SIZE:I = 0x5

.field private static final MAX_LATE_INVOCATION_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OnOffTrackerProxy"

.field private static final empty:[Ljava/lang/Object;


# instance fields
.field private final earlyInvocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy",
            "<TT;>.Invocation;>;"
        }
    .end annotation
.end field

.field private instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final instantiator:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final lateInvocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy",
            "<TT;>.Invocation;>;"
        }
    .end annotation
.end field

.field private final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field private final postponer:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private triedToInstantiate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->empty:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/aol/OnOffSwitch;",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator",
            "<TT;>;",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    invoke-static {p2}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {p3}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 74
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instantiator:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;

    .line 75
    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->postponer:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;

    .line 76
    sget-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, p3}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->assertClassIsProxyable(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)V

    .line 79
    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;-><init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;)V

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->register(Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;)V

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->earlyInvocations:Ljava/util/LinkedList;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->lateInvocations:Ljava/util/LinkedList;

    .line 99
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->empty:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->runInvocations()V

    return-void
.end method

.method static synthetic access$200(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->triedToInstantiate:Z

    return v0
.end method

.method private assertClassIsProxyable(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;->getMethodsOwner()Ljava/lang/Class;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 105
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 106
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 110
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    invoke-interface {p1, v3}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;->isQueueable(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot proxy a tracker with nonpostponable method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot proxy a tracker with non-void, non-boolean return types."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    return-void
.end method

.method private clearInvocationQueue()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->earlyInvocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 231
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->lateInvocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 232
    return-void
.end method

.method static create(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/aol/OnOffSwitch;",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator",
            "<TT;>;",
            "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;->getMethodsOwner()Ljava/lang/Class;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

    invoke-direct {v2, p0, p1, p2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;-><init>(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)V

    .line 128
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private enqueueInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->earlyInvocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->earlyInvocations:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;-><init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->lateInvocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->lateInvocations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->lateInvocations:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;-><init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDummyValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->postponer:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;

    invoke-interface {v0, p1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;->isQueueable(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot queue method call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeUnsafe(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->postponer:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;->getMethodsOwner()Ljava/lang/Class;

    move-result-object v0

    .line 146
    const-string v2, "getClass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const-string v2, "toString"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 151
    const-class v2, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->triedToInstantiate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->clearInvocationQueue()V

    .line 161
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->getDummyValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne v0, v1, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->runInvocations()V

    .line 165
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne v0, v1, :cond_6

    .line 170
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->triedToInstantiate:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 171
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->enqueueInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 174
    :cond_6
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->getDummyValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private runInvocations()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->triedToInstantiate:Z

    if-nez v0, :cond_1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instantiator:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;->create()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->triedToInstantiate:Z

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 216
    :cond_2
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    sget-object v1, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "OnOffTrackerProxy"

    const-string v2, "Could not create instance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->earlyInvocations:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->lateInvocations:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 198
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;

    .line 200
    :try_start_1
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->access$300(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;)[Ljava/lang/ref/WeakReference;

    move-result-object v2

    array-length v2, v2

    new-array v8, v2, [Ljava/lang/Object;

    .line 202
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->access$300(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;)[Ljava/lang/ref/WeakReference;

    move-result-object v9

    array-length v10, v9

    move v2, v4

    move v3, v4

    :goto_3
    if-ge v2, v10, :cond_5

    aget-object v11, v9, v2

    .line 203
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v3

    .line 202
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_3

    .line 205
    :cond_5
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->access$400(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->instance:Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 206
    :catch_1
    move-exception v2

    .line 207
    sget-object v3, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 209
    if-nez v3, :cond_6

    :goto_4
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 210
    const-string v3, "OnOffTrackerProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not resurrect call to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->access$400(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object v2, v3

    .line 209
    goto :goto_4

    .line 214
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->invokeUnsafe(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->getDummyValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
