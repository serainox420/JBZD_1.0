.class public Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;
.super Ljava/lang/Object;
.source "XIncentivizedEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/XIncentivizedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XIncentiveEvent"
.end annotation


# static fields
.field public static final INCENTIVE_VIDEO_COMPLETE:Ljava/lang/String; = "IncentiveVideoComplete"


# instance fields
.field public final args:Ljava/lang/String;

.field public final eventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->eventId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->args:Ljava/lang/String;

    .line 31
    return-void
.end method
