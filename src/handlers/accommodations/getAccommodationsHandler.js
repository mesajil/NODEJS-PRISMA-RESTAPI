

const getAccommodation = async (req, res) => {
    try {
        const accommodation = await Accommodation.findById(req.params.id);
        res.status(200).json(accommodation);
    } catch (err) {
        res.status(500).json(err);
    }
}
