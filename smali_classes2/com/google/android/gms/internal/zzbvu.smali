.class public final Lcom/google/android/gms/internal/zzbvu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbvu$zza;
    }
.end annotation


# instance fields
.field private final zzcpc:Lcom/google/android/gms/internal/zzbvk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbvk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvu;->zzcpc:Lcom/google/android/gms/internal/zzbvk;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbwg;->zzadR()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbwg;->zzadQ()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbvj;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbwg;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbuk;->zza(Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvu;->zzcpc:Lcom/google/android/gms/internal/zzbvk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbvk;->zzb(Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvp;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/zzbvu$zza;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbvu$zza;-><init>(Lcom/google/android/gms/internal/zzbuk;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbvc;Lcom/google/android/gms/internal/zzbvp;)V

    goto :goto_0
.end method
