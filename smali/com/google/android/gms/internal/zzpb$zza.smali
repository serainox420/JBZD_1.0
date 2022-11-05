.class public final Lcom/google/android/gms/internal/zzpb$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzTi:Lcom/google/android/gms/internal/zzmk;

.field public final zzWa:Lorg/json/JSONObject;

.field public final zzWc:Lcom/google/android/gms/internal/zzjr;

.field public final zzWg:J

.field public final zzWh:J

.field public final zzWm:Lcom/google/android/gms/internal/zzmn;

.field public final zzvr:Lcom/google/android/gms/internal/zzeg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iput p5, p0, Lcom/google/android/gms/internal/zzpb$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzWh:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    return-void
.end method
