.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GamerProfileUpdatedBinderCallback"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method


# virtual methods
.method public zzh(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
