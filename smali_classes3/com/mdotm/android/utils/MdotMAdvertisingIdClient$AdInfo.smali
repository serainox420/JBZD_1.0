.class public final Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "MdotMAdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/utils/MdotMAdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
