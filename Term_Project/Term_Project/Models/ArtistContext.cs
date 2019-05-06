namespace Term_Project.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ArtistContext : DbContext
    {
        public ArtistContext()
            : base("name=ArtistConnectionContext")
        {
        }

        public virtual DbSet<Artist> Artists { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Artist>()
                .Property(e => e.Address)
                .IsFixedLength();

            modelBuilder.Entity<Artist>()
                .Property(e => e.Contact)
                .IsFixedLength();

            modelBuilder.Entity<Artist>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<Artist>()
                .Property(e => e.Genre)
                .IsFixedLength();

            modelBuilder.Entity<Artist>()
                .Property(e => e.Link)
                .IsFixedLength();
        }
    }
}
