.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;
.super Ljava/lang/Object;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingEvent"
.end annotation


# instance fields
.field public event:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

.field public uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;->event:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    .line 133
    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;->uri:Ljava/lang/String;

    .line 134
    return-void
.end method
