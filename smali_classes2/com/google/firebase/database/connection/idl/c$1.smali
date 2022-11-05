.class Lcom/google/firebase/database/connection/idl/c$1;
.super Lcom/google/firebase/database/connection/idl/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/c;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzboo;Ljava/lang/Long;Lcom/google/android/gms/internal/zzbos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzboo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/c;Lcom/google/android/gms/internal/zzboo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/zzboo;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/zzboo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzboo;->zzXw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/zzboo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzboo;->zzXx()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/google/firebase/database/connection/idl/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/zzboo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzboo;->zzXy()Lcom/google/android/gms/internal/zzboi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->a(Lcom/google/android/gms/internal/zzboi;)Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    return-object v0
.end method
