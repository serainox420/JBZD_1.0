.class public Lcom/google/android/gms/internal/zzayn;
.super Lcom/google/android/gms/nearby/messages/internal/zzp$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzayj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzp$zza;",
        "Lcom/google/android/gms/internal/zzayj",
        "<",
        "Lcom/google/android/gms/nearby/messages/PublishCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbBs:Lcom/google/android/gms/internal/zzaym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaym",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbBp:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzayn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzayn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayn;->zzbBs:Lcom/google/android/gms/internal/zzaym;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzp$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayn;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayn;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    sget-object v1, Lcom/google/android/gms/internal/zzayn;->zzbBs:Lcom/google/android/gms/internal/zzaym;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zzOP()Lcom/google/android/gms/internal/zzabh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayn;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    return-object v0
.end method
