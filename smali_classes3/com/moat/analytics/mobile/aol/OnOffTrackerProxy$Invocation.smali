.class Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;
.super Ljava/lang/Object;
.source "OnOffTrackerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Invocation"
.end annotation


# instance fields
.field private final args:[Ljava/lang/ref/WeakReference;

.field private final method:Ljava/lang/reflect/Method;

.field private final strongArgs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;


# direct methods
.method private varargs constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->this$0:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->strongArgs:Ljava/util/LinkedList;

    .line 47
    if-nez p3, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->access$000()[Ljava/lang/Object;

    move-result-object p3

    .line 48
    :cond_0
    array-length v1, p3

    new-array v3, v1, [Ljava/lang/ref/WeakReference;

    .line 50
    array-length v4, p3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, p3, v0

    .line 51
    instance-of v2, v5, Ljava/util/Map;

    if-nez v2, :cond_1

    instance-of v2, v5, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->strongArgs:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, v1

    .line 50
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 56
    :cond_3
    iput-object v3, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->args:[Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->method:Ljava/lang/reflect/Method;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;-><init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;)[Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->args:[Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Invocation;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
