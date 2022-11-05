.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;
.super Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;->a:J

    return-void
.end method


# virtual methods
.method public getThrottleEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;->a:J

    return-wide v0
.end method
