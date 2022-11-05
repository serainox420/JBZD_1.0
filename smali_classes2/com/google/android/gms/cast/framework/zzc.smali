.class public Lcom/google/android/gms/cast/framework/zzc;
.super Lcom/google/android/gms/cast/framework/zzi$zza;


# instance fields
.field private final zzaqt:Lcom/google/android/gms/cast/framework/CastStateListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzi$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzc;->zzaqt:Lcom/google/android/gms/cast/framework/CastStateListener;

    return-void
.end method


# virtual methods
.method public onCastStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzc;->zzaqt:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/CastStateListener;->onCastStateChanged(I)V

    return-void
.end method

.method public zzsB()I
    .locals 1

    const v0, 0x9d2360

    return v0
.end method

.method public zzsC()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzc;->zzaqt:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
